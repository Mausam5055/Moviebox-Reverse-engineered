.class public abstract Landroidx/compose/ui/draw/l;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Landroidx/compose/ui/f;FLandroidx/compose/ui/graphics/a5;ZJJ)Landroidx/compose/ui/f;
    .locals 10

    const/4 v0, 0x0

    int-to-float v0, v0

    invoke-static {v0}, Lo0/i;->g(F)F

    move-result v0

    move v2, p1

    invoke-static {p1, v0}, Lo0/i;->f(FF)I

    move-result v0

    if-gtz v0, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;

    const/4 v9, 0x0

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/draw/ShadowGraphicsLayerElement;-><init>(FLandroidx/compose/ui/graphics/a5;ZJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v1, p0

    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static synthetic b(Landroidx/compose/ui/f;FLandroidx/compose/ui/graphics/a5;ZJJILjava/lang/Object;)Landroidx/compose/ui/f;
    .locals 8

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/v4;->a()Landroidx/compose/ui/graphics/a5;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    int-to-float v2, v1

    invoke-static {v2}, Lo0/i;->g(F)F

    move-result v2

    move v3, p1

    invoke-static {p1, v2}, Lo0/i;->f(FF)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    move v3, p1

    move v1, p3

    :cond_2
    :goto_1
    and-int/lit8 v2, p8, 0x8

    if-eqz v2, :cond_3

    invoke-static {}, Landroidx/compose/ui/graphics/d4;->a()J

    move-result-wide v4

    goto :goto_2

    :cond_3
    move-wide v4, p4

    :goto_2
    and-int/lit8 v2, p8, 0x10

    if-eqz v2, :cond_4

    invoke-static {}, Landroidx/compose/ui/graphics/d4;->a()J

    move-result-wide v6

    goto :goto_3

    :cond_4
    move-wide v6, p6

    :goto_3
    move-object p2, p0

    move p3, p1

    move-object p4, v0

    move p5, v1

    move-wide p6, v4

    move-wide/from16 p8, v6

    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/draw/l;->a(Landroidx/compose/ui/f;FLandroidx/compose/ui/graphics/a5;ZJJ)Landroidx/compose/ui/f;

    move-result-object v0

    return-object v0
.end method
