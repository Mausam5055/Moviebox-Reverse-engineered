.class public abstract Landroidx/compose/ui/graphics/l4;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lz/g;Landroidx/compose/ui/graphics/k4;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 14

    move-object v0, p1

    instance-of v1, v0, Landroidx/compose/ui/graphics/k4$b;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/ui/graphics/k4$b;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/k4$b;->b()Ly/i;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/l4;->g(Ly/i;)J

    move-result-wide v3

    invoke-static {v0}, Landroidx/compose/ui/graphics/l4;->e(Ly/i;)J

    move-result-wide v5

    move-object v1, p0

    move-object/from16 v2, p2

    move/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-interface/range {v1 .. v10}, Lz/g;->N0(Landroidx/compose/ui/graphics/j1;JJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/graphics/k4$c;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/compose/ui/graphics/k4$c;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/k4$c;->c()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    move-object v1, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v1 .. v7}, Lz/g;->i0(Landroidx/compose/ui/graphics/Path;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/k4$c;->b()Ly/k;

    move-result-object v0

    invoke-virtual {v0}, Ly/k;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ly/a;->d(J)F

    move-result v1

    invoke-static {v0}, Landroidx/compose/ui/graphics/l4;->h(Ly/k;)J

    move-result-wide v4

    invoke-static {v0}, Landroidx/compose/ui/graphics/l4;->f(Ly/k;)J

    move-result-wide v6

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ly/b;->b(FFILjava/lang/Object;)J

    move-result-wide v8

    move-object v2, p0

    move-object/from16 v3, p2

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    invoke-interface/range {v2 .. v13}, Lz/g;->V0(Landroidx/compose/ui/graphics/j1;JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/graphics/k4$a;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/compose/ui/graphics/k4$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/k4$a;->b()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static synthetic b(Lz/g;Landroidx/compose/ui/graphics/k4;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p8, p7, 0x4

    if-eqz p8, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_0
    move v3, p3

    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    sget-object p4, Lz/l;->a:Lz/l;

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    const/4 p5, 0x0

    :cond_2
    move-object v5, p5

    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    sget-object p3, Lz/g;->o1:Lz/g$a;

    invoke-virtual {p3}, Lz/g$a;->a()I

    move-result p6

    :cond_3
    move v6, p6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/graphics/l4;->a(Lz/g;Landroidx/compose/ui/graphics/k4;Landroidx/compose/ui/graphics/j1;FLz/h;Landroidx/compose/ui/graphics/v1;I)V

    return-void
.end method

.method public static final c(Lz/g;Landroidx/compose/ui/graphics/k4;JFLz/h;Landroidx/compose/ui/graphics/v1;I)V
    .locals 15

    move-object/from16 v0, p1

    instance-of v1, v0, Landroidx/compose/ui/graphics/k4$b;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/ui/graphics/k4$b;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/k4$b;->b()Ly/i;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/graphics/l4;->g(Ly/i;)J

    move-result-wide v4

    invoke-static {v0}, Landroidx/compose/ui/graphics/l4;->e(Ly/i;)J

    move-result-wide v6

    move-object v1, p0

    move-wide/from16 v2, p2

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-interface/range {v1 .. v11}, Lz/g;->L0(JJJFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Landroidx/compose/ui/graphics/k4$c;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/compose/ui/graphics/k4$c;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/k4$c;->c()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    move-object v1, p0

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lz/g;->D0(Landroidx/compose/ui/graphics/Path;JFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/k4$c;->b()Ly/k;

    move-result-object v0

    invoke-virtual {v0}, Ly/k;->b()J

    move-result-wide v1

    invoke-static {v1, v2}, Ly/a;->d(J)F

    move-result v1

    invoke-static {v0}, Landroidx/compose/ui/graphics/l4;->h(Ly/k;)J

    move-result-wide v5

    invoke-static {v0}, Landroidx/compose/ui/graphics/l4;->f(Ly/k;)J

    move-result-wide v7

    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ly/b;->b(FFILjava/lang/Object;)J

    move-result-wide v9

    move-object v2, p0

    move-wide/from16 v3, p2

    move-object/from16 v11, p5

    move/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    invoke-interface/range {v2 .. v14}, Lz/g;->T(JJJJLz/h;FLandroidx/compose/ui/graphics/v1;I)V

    goto :goto_1

    :cond_2
    instance-of v1, v0, Landroidx/compose/ui/graphics/k4$a;

    if-eqz v1, :cond_3

    check-cast v0, Landroidx/compose/ui/graphics/k4$a;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/k4$a;->b()Landroidx/compose/ui/graphics/Path;

    move-result-object v2

    goto :goto_0

    :goto_1
    return-void

    :cond_3
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public static synthetic d(Lz/g;Landroidx/compose/ui/graphics/k4;JFLz/h;Landroidx/compose/ui/graphics/v1;IILjava/lang/Object;)V
    .locals 9

    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_1

    sget-object v0, Lz/l;->a:Lz/l;

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    :goto_1
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_2

    :cond_2
    move-object v7, p6

    :goto_2
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_3

    sget-object v0, Lz/g;->o1:Lz/g$a;

    invoke-virtual {v0}, Lz/g$a;->a()I

    move-result v0

    move v8, v0

    goto :goto_3

    :cond_3
    move/from16 v8, p7

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/l4;->c(Lz/g;Landroidx/compose/ui/graphics/k4;JFLz/h;Landroidx/compose/ui/graphics/v1;I)V

    return-void
.end method

.method private static final e(Ly/i;)J
    .locals 2

    invoke-virtual {p0}, Ly/i;->k()F

    move-result v0

    invoke-virtual {p0}, Ly/i;->e()F

    move-result p0

    invoke-static {v0, p0}, Ly/n;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final f(Ly/k;)J
    .locals 2

    invoke-virtual {p0}, Ly/k;->j()F

    move-result v0

    invoke-virtual {p0}, Ly/k;->d()F

    move-result p0

    invoke-static {v0, p0}, Ly/n;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final g(Ly/i;)J
    .locals 2

    invoke-virtual {p0}, Ly/i;->f()F

    move-result v0

    invoke-virtual {p0}, Ly/i;->i()F

    move-result p0

    invoke-static {v0, p0}, Ly/h;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method

.method private static final h(Ly/k;)J
    .locals 2

    invoke-virtual {p0}, Ly/k;->e()F

    move-result v0

    invoke-virtual {p0}, Ly/k;->g()F

    move-result p0

    invoke-static {v0, p0}, Ly/h;->a(FF)J

    move-result-wide v0

    return-wide v0
.end method
