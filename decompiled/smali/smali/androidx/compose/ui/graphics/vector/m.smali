.class public abstract Landroidx/compose/ui/graphics/vector/m;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/graphics/vector/VectorPainter;JJLjava/lang/String;Landroidx/compose/ui/graphics/v1;Z)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/graphics/vector/VectorPainter;->u(J)V

    invoke-virtual {p0, p7}, Landroidx/compose/ui/graphics/vector/VectorPainter;->q(Z)V

    invoke-virtual {p0, p6}, Landroidx/compose/ui/graphics/vector/VectorPainter;->r(Landroidx/compose/ui/graphics/v1;)V

    invoke-virtual {p0, p3, p4}, Landroidx/compose/ui/graphics/vector/VectorPainter;->v(J)V

    invoke-virtual {p0, p5}, Landroidx/compose/ui/graphics/vector/VectorPainter;->t(Ljava/lang/String;)V

    return-object p0
.end method

.method private static final b(JI)Landroidx/compose/ui/graphics/v1;
    .locals 2

    const-wide/16 v0, 0x10

    cmp-long v0, p0, v0

    if-eqz v0, :cond_0

    sget-object v0, Landroidx/compose/ui/graphics/v1;->b:Landroidx/compose/ui/graphics/v1$a;

    invoke-virtual {v0, p0, p1, p2}, Landroidx/compose/ui/graphics/v1$a;->a(JI)Landroidx/compose/ui/graphics/v1;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/j;)Landroidx/compose/ui/graphics/vector/GroupComponent;
    .locals 5

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/j;->o()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p1, v1}, Landroidx/compose/ui/graphics/vector/j;->c(I)Landroidx/compose/ui/graphics/vector/l;

    move-result-object v2

    instance-of v3, v2, Landroidx/compose/ui/graphics/vector/n;

    if-eqz v3, :cond_0

    new-instance v3, Landroidx/compose/ui/graphics/vector/PathComponent;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/PathComponent;-><init>()V

    check-cast v2, Landroidx/compose/ui/graphics/vector/n;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->f()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->k(Ljava/util/List;)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->h()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->l(I)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->j(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->a()Landroidx/compose/ui/graphics/j1;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->h(Landroidx/compose/ui/graphics/j1;)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->c()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->i(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->j()Landroidx/compose/ui/graphics/j1;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->m(Landroidx/compose/ui/graphics/j1;)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->l()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->n(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->p()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->r(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->m()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->o(I)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->n()I

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->p(I)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->o()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->q(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->s()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->u(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->q()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/PathComponent;->s(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/n;->r()F

    move-result v2

    invoke-virtual {v3, v2}, Landroidx/compose/ui/graphics/vector/PathComponent;->t(F)V

    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/graphics/vector/GroupComponent;->i(ILandroidx/compose/ui/graphics/vector/i;)V

    goto :goto_1

    :cond_0
    instance-of v3, v2, Landroidx/compose/ui/graphics/vector/j;

    if-eqz v3, :cond_1

    new-instance v3, Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-direct {v3}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    check-cast v2, Landroidx/compose/ui/graphics/vector/j;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/j;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/GroupComponent;->p(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/j;->l()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/GroupComponent;->s(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/j;->m()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/GroupComponent;->t(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/j;->n()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/GroupComponent;->u(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/j;->p()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/GroupComponent;->v(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/j;->q()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/GroupComponent;->w(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/j;->h()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/GroupComponent;->q(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/j;->j()F

    move-result v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/GroupComponent;->r(F)V

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/vector/j;->e()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/vector/GroupComponent;->o(Ljava/util/List;)V

    invoke-static {v3, v2}, Landroidx/compose/ui/graphics/vector/m;->c(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/j;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-virtual {p0, v1, v3}, Landroidx/compose/ui/graphics/vector/GroupComponent;->i(ILandroidx/compose/ui/graphics/vector/i;)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_2
    return-object p0
.end method

.method public static final d(Lo0/e;Landroidx/compose/ui/graphics/vector/c;Landroidx/compose/ui/graphics/vector/GroupComponent;)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 10

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/c;->e()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/c;->d()F

    move-result v1

    invoke-static {p0, v0, v1}, Landroidx/compose/ui/graphics/vector/m;->e(Lo0/e;FF)J

    move-result-wide v3

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/c;->l()F

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/c;->k()F

    move-result v0

    invoke-static {v3, v4, p0, v0}, Landroidx/compose/ui/graphics/vector/m;->f(JFF)J

    move-result-wide v5

    new-instance v2, Landroidx/compose/ui/graphics/vector/VectorPainter;

    invoke-direct {v2, p2}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>(Landroidx/compose/ui/graphics/vector/GroupComponent;)V

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/c;->g()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/c;->j()J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/c;->i()I

    move-result p0

    invoke-static {v0, v1, p0}, Landroidx/compose/ui/graphics/vector/m;->b(JI)Landroidx/compose/ui/graphics/v1;

    move-result-object v8

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/vector/c;->c()Z

    move-result v9

    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/graphics/vector/m;->a(Landroidx/compose/ui/graphics/vector/VectorPainter;JJLjava/lang/String;Landroidx/compose/ui/graphics/v1;Z)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object p0

    return-object p0
.end method

.method private static final e(Lo0/e;FF)J
    .locals 0

    invoke-interface {p0, p1}, Lo0/e;->E0(F)F

    move-result p1

    invoke-interface {p0, p2}, Lo0/e;->E0(F)F

    move-result p0

    invoke-static {p1, p0}, Ly/n;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method private static final f(JFF)J
    .locals 1

    invoke-static {p2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Ly/m;->i(J)F

    move-result p2

    :cond_0
    invoke-static {p3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Ly/m;->g(J)F

    move-result p3

    :cond_1
    invoke-static {p2, p3}, Ly/n;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final g(Landroidx/compose/ui/graphics/vector/c;Landroidx/compose/runtime/i;I)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 6

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    const-string v1, "androidx.compose.ui.graphics.vector.rememberVectorPainter (VectorPainter.kt:171)"

    const v2, 0x544566b0

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->c()Landroidx/compose/runtime/s1;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lo0/e;

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/c;->f()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p2}, Lo0/e;->getDensity()F

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v2, v0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    invoke-interface {p1, v0, v1}, Landroidx/compose/runtime/i;->d(J)Z

    move-result v0

    invoke-interface {p1}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_1

    sget-object v0, Landroidx/compose/runtime/i;->a:Landroidx/compose/runtime/i$a;

    invoke-virtual {v0}, Landroidx/compose/runtime/i$a;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_2

    :cond_1
    new-instance v0, Landroidx/compose/ui/graphics/vector/GroupComponent;

    invoke-direct {v0}, Landroidx/compose/ui/graphics/vector/GroupComponent;-><init>()V

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/c;->h()Landroidx/compose/ui/graphics/vector/j;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/vector/m;->c(Landroidx/compose/ui/graphics/vector/GroupComponent;Landroidx/compose/ui/graphics/vector/j;)Landroidx/compose/ui/graphics/vector/GroupComponent;

    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-static {p2, p0, v0}, Landroidx/compose/ui/graphics/vector/m;->d(Lo0/e;Landroidx/compose/ui/graphics/vector/c;Landroidx/compose/ui/graphics/vector/GroupComponent;)Landroidx/compose/ui/graphics/vector/VectorPainter;

    move-result-object v1

    invoke-interface {p1, v1}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    :cond_2
    check-cast v1, Landroidx/compose/ui/graphics/vector/VectorPainter;

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_3
    return-object v1
.end method
