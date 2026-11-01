.class public abstract Landroidx/compose/animation/core/p;
.super Ljava/lang/Object;


# direct methods
.method public static final a(F)Landroidx/compose/animation/core/k;
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/k;

    invoke-direct {v0, p0}, Landroidx/compose/animation/core/k;-><init>(F)V

    return-object v0
.end method

.method public static final b(FF)Landroidx/compose/animation/core/l;
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/l;

    invoke-direct {v0, p0, p1}, Landroidx/compose/animation/core/l;-><init>(FF)V

    return-object v0
.end method

.method public static final c(FFF)Landroidx/compose/animation/core/m;
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/m;

    invoke-direct {v0, p0, p1, p2}, Landroidx/compose/animation/core/m;-><init>(FFF)V

    return-object v0
.end method

.method public static final d(FFFF)Landroidx/compose/animation/core/n;
    .locals 1

    new-instance v0, Landroidx/compose/animation/core/n;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/compose/animation/core/n;-><init>(FFFF)V

    return-object v0
.end method

.method public static final e(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 4

    invoke-static {p0}, Landroidx/compose/animation/core/p;->g(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/animation/core/o;->b()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-virtual {p0, v2}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroidx/compose/animation/core/o;->e(IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static final f(Landroidx/compose/animation/core/o;Landroidx/compose/animation/core/o;)V
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/animation/core/o;->b()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Landroidx/compose/animation/core/o;->a(I)F

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroidx/compose/animation/core/o;->e(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final g(Landroidx/compose/animation/core/o;)Landroidx/compose/animation/core/o;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/animation/core/o;->c()Landroidx/compose/animation/core/o;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type T of androidx.compose.animation.core.AnimationVectorsKt.newInstance"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
