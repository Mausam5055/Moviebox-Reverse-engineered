.class public abstract synthetic Landroidx/compose/animation/core/c0;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroidx/compose/animation/core/d0;FFF)F
    .locals 6

    invoke-interface {p0, p1, p2, p3}, Landroidx/compose/animation/core/d0;->e(FFF)J

    move-result-wide v1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroidx/compose/animation/core/d0;->d(JFFF)F

    move-result p0

    return p0
.end method

.method public static bridge synthetic b(Landroidx/compose/animation/core/d0;Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/v0;
    .locals 0

    invoke-interface {p0, p1}, Landroidx/compose/animation/core/d0;->a(Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/c1;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroidx/compose/animation/core/d0;Landroidx/compose/animation/core/s0;)Landroidx/compose/animation/core/c1;
    .locals 0

    new-instance p1, Landroidx/compose/animation/core/c1;

    invoke-direct {p1, p0}, Landroidx/compose/animation/core/c1;-><init>(Landroidx/compose/animation/core/d0;)V

    return-object p1
.end method
