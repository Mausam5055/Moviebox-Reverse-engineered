.class public abstract Landroidx/compose/foundation/BorderKt;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/graphics/Path;Ly/k;FZ)Landroidx/compose/ui/graphics/Path;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/foundation/BorderKt;->h(Landroidx/compose/ui/graphics/Path;Ly/k;FZ)Landroidx/compose/ui/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Landroidx/compose/ui/draw/c;)Landroidx/compose/ui/draw/h;
    .locals 0

    invoke-static {p0}, Landroidx/compose/foundation/BorderKt;->i(Landroidx/compose/ui/draw/c;)Landroidx/compose/ui/draw/h;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Landroidx/compose/ui/draw/c;Landroidx/compose/ui/graphics/j1;JJZF)Landroidx/compose/ui/draw/h;
    .locals 0

    invoke-static/range {p0 .. p7}, Landroidx/compose/foundation/BorderKt;->j(Landroidx/compose/ui/draw/c;Landroidx/compose/ui/graphics/j1;JJZF)Landroidx/compose/ui/draw/h;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic d(JF)J
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/foundation/BorderKt;->k(JF)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final e(Landroidx/compose/ui/f;FJLandroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;
    .locals 2

    new-instance v0, Landroidx/compose/ui/graphics/b5;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p3, v1}, Landroidx/compose/ui/graphics/b5;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p0, p1, v0, p4}, Landroidx/compose/foundation/BorderKt;->f(Landroidx/compose/ui/f;FLandroidx/compose/ui/graphics/j1;Landroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Landroidx/compose/ui/f;FLandroidx/compose/ui/graphics/j1;Landroidx/compose/ui/graphics/a5;)Landroidx/compose/ui/f;
    .locals 2

    new-instance v0, Landroidx/compose/foundation/BorderModifierNodeElement;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/compose/foundation/BorderModifierNodeElement;-><init>(FLandroidx/compose/ui/graphics/j1;Landroidx/compose/ui/graphics/a5;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {p0, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object p0

    return-object p0
.end method

.method private static final g(FLy/k;)Ly/k;
    .locals 15

    move v2, p0

    invoke-virtual/range {p1 .. p1}, Ly/k;->j()F

    move-result v0

    sub-float v3, v0, v2

    invoke-virtual/range {p1 .. p1}, Ly/k;->d()F

    move-result v0

    sub-float v4, v0, v2

    invoke-virtual/range {p1 .. p1}, Ly/k;->h()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->k(JF)J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Ly/k;->i()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->k(JF)J

    move-result-wide v7

    invoke-virtual/range {p1 .. p1}, Ly/k;->b()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->k(JF)J

    move-result-wide v11

    invoke-virtual/range {p1 .. p1}, Ly/k;->c()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Landroidx/compose/foundation/BorderKt;->k(JF)J

    move-result-wide v9

    new-instance v14, Ly/k;

    const/4 v13, 0x0

    move-object v0, v14

    move v1, p0

    invoke-direct/range {v0 .. v13}, Ly/k;-><init>(FFFFJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v14
.end method

.method private static final h(Landroidx/compose/ui/graphics/Path;Ly/k;FZ)Landroidx/compose/ui/graphics/Path;
    .locals 2

    invoke-interface {p0}, Landroidx/compose/ui/graphics/Path;->reset()V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Landroidx/compose/ui/graphics/o4;->b(Landroidx/compose/ui/graphics/Path;Ly/k;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    if-nez p3, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/x0;->a()Landroidx/compose/ui/graphics/Path;

    move-result-object p3

    invoke-static {p2, p1}, Landroidx/compose/foundation/BorderKt;->g(FLy/k;)Ly/k;

    move-result-object p1

    invoke-static {p3, p1, v0, v1, v0}, Landroidx/compose/ui/graphics/o4;->b(Landroidx/compose/ui/graphics/Path;Ly/k;Landroidx/compose/ui/graphics/Path$Direction;ILjava/lang/Object;)V

    sget-object p1, Landroidx/compose/ui/graphics/s4;->a:Landroidx/compose/ui/graphics/s4$a;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/s4$a;->a()I

    move-result p1

    invoke-interface {p0, p0, p3, p1}, Landroidx/compose/ui/graphics/Path;->l(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/Path;I)Z

    :cond_0
    return-object p0
.end method

.method private static final i(Landroidx/compose/ui/draw/c;)Landroidx/compose/ui/draw/h;
    .locals 1

    sget-object v0, Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;->INSTANCE:Landroidx/compose/foundation/BorderKt$drawContentWithoutBorder$1;

    invoke-virtual {p0, v0}, Landroidx/compose/ui/draw/c;->v(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/h;

    move-result-object p0

    return-object p0
.end method

.method private static final j(Landroidx/compose/ui/draw/c;Landroidx/compose/ui/graphics/j1;JJZF)Landroidx/compose/ui/draw/h;
    .locals 16

    if-eqz p6, :cond_0

    sget-object v0, Ly/g;->b:Ly/g$a;

    invoke-virtual {v0}, Ly/g$a;->c()J

    move-result-wide v0

    move-wide v4, v0

    goto :goto_0

    :cond_0
    move-wide/from16 v4, p2

    :goto_0
    if-eqz p6, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/draw/c;->i()J

    move-result-wide v0

    move-wide v6, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v6, p4

    :goto_1
    if-eqz p6, :cond_2

    sget-object v0, Lz/l;->a:Lz/l;

    move-object v8, v0

    goto :goto_2

    :cond_2
    new-instance v0, Lz/m;

    const/16 v14, 0x1e

    const/4 v15, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v0

    move/from16 v9, p7

    invoke-direct/range {v8 .. v15}, Lz/m;-><init>(FFIILandroidx/compose/ui/graphics/p4;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_2
    new-instance v0, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/BorderKt$drawRectBorder$1;-><init>(Landroidx/compose/ui/graphics/j1;JJLz/h;)V

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Landroidx/compose/ui/draw/c;->v(Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/draw/h;

    move-result-object v0

    return-object v0
.end method

.method private static final k(JF)J
    .locals 2

    invoke-static {p0, p1}, Ly/a;->d(J)F

    move-result v0

    sub-float/2addr v0, p2

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p0, p1}, Ly/a;->e(J)F

    move-result p0

    sub-float/2addr p0, p2

    invoke-static {v1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v0, p0}, Ly/b;->a(FF)J

    move-result-wide p0

    return-wide p0
.end method
