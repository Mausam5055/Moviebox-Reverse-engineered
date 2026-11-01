.class public abstract Landroidx/compose/ui/graphics/layer/d;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lz/g;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 1

    invoke-interface {p0}, Lz/g;->H0()Lz/d;

    move-result-object v0

    invoke-interface {v0}, Lz/d;->e()Landroidx/compose/ui/graphics/m1;

    move-result-object v0

    invoke-interface {p0}, Lz/g;->H0()Lz/d;

    move-result-object p0

    invoke-interface {p0}, Lz/d;->g()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->h(Landroidx/compose/ui/graphics/m1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public static final b(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/k4;)V
    .locals 8

    instance-of v0, p1, Landroidx/compose/ui/graphics/k4$b;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/ui/graphics/k4$b;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$b;->b()Ly/i;

    move-result-object v0

    invoke-virtual {v0}, Ly/i;->f()F

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$b;->b()Ly/i;

    move-result-object v1

    invoke-virtual {v1}, Ly/i;->i()F

    move-result v1

    invoke-static {v0, v1}, Ly/h;->a(FF)J

    move-result-wide v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$b;->b()Ly/i;

    move-result-object v2

    invoke-virtual {v2}, Ly/i;->k()F

    move-result v2

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$b;->b()Ly/i;

    move-result-object p1

    invoke-virtual {p1}, Ly/i;->e()F

    move-result p1

    invoke-static {v2, p1}, Ly/n;->a(FF)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->R(JJ)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/graphics/k4$a;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/ui/graphics/k4$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$a;->b()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->O(Landroidx/compose/ui/graphics/Path;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/graphics/k4$c;

    if-eqz v0, :cond_3

    check-cast p1, Landroidx/compose/ui/graphics/k4$c;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$c;->c()Landroidx/compose/ui/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$c;->c()Landroidx/compose/ui/graphics/Path;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->O(Landroidx/compose/ui/graphics/Path;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/k4$c;->b()Ly/k;

    move-result-object p1

    invoke-virtual {p1}, Ly/k;->e()F

    move-result v0

    invoke-virtual {p1}, Ly/k;->g()F

    move-result v1

    invoke-static {v0, v1}, Ly/h;->a(FF)J

    move-result-wide v3

    invoke-virtual {p1}, Ly/k;->j()F

    move-result v0

    invoke-virtual {p1}, Ly/k;->d()F

    move-result v1

    invoke-static {v0, v1}, Ly/n;->a(FF)J

    move-result-wide v5

    invoke-virtual {p1}, Ly/k;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ly/a;->d(J)F

    move-result v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->W(JJF)V

    :cond_3
    :goto_0
    return-void
.end method
