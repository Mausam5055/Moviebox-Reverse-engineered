.class public abstract Landroidx/compose/ui/graphics/colorspace/d;
.super Ljava/lang/Object;


# direct methods
.method public static final a(DDDDDD)D
    .locals 16

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    neg-double v2, v0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/colorspace/d;->o(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final b(DDDDDD)D
    .locals 16

    move-wide/from16 v0, p0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    neg-double v2, v0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    move-wide v4, v0

    :goto_0
    move-wide/from16 v6, p2

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    move-wide/from16 v12, p8

    move-wide/from16 v14, p10

    invoke-static/range {v4 .. v15}, Landroidx/compose/ui/graphics/colorspace/d;->q(DDDDDD)D

    move-result-wide v2

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static final c(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/y;Landroidx/compose/ui/graphics/colorspace/a;)Landroidx/compose/ui/graphics/colorspace/c;
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/c;->e()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/b;->a:Landroidx/compose/ui/graphics/colorspace/b$a;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/b$a;->b()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/b;->e(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    check-cast v0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v1

    invoke-static {v1, p1}, Landroidx/compose/ui/graphics/colorspace/d;->f(Landroidx/compose/ui/graphics/colorspace/y;Landroidx/compose/ui/graphics/colorspace/y;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/y;->c()[F

    move-result-object p0

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/a;->b()[F

    move-result-object p2

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->N()Landroidx/compose/ui/graphics/colorspace/y;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/y;->c()[F

    move-result-object v1

    invoke-static {p2, v1, p0}, Landroidx/compose/ui/graphics/colorspace/d;->e([F[F[F)[F

    move-result-object p0

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->M()[F

    move-result-object p2

    invoke-static {p0, p2}, Landroidx/compose/ui/graphics/colorspace/d;->l([F[F)[F

    move-result-object p0

    new-instance p2, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-direct {p2, v0, p0, p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;[FLandroidx/compose/ui/graphics/colorspace/y;)V

    return-object p2

    :cond_1
    return-object p0
.end method

.method public static synthetic d(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/y;Landroidx/compose/ui/graphics/colorspace/a;ILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/c;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    sget-object p2, Landroidx/compose/ui/graphics/colorspace/a;->b:Landroidx/compose/ui/graphics/colorspace/a$d;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/a$d;->a()Landroidx/compose/ui/graphics/colorspace/a;

    move-result-object p2

    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/d;->c(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/y;Landroidx/compose/ui/graphics/colorspace/a;)Landroidx/compose/ui/graphics/colorspace/c;

    move-result-object p0

    return-object p0
.end method

.method public static final e([F[F[F)[F
    .locals 5

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/colorspace/d;->n([F[F)[F

    move-result-object p1

    invoke-static {p0, p2}, Landroidx/compose/ui/graphics/colorspace/d;->n([F[F)[F

    move-result-object p2

    const/4 v0, 0x0

    aget v1, p2, v0

    aget v2, p1, v0

    div-float/2addr v1, v2

    const/4 v2, 0x1

    aget v3, p2, v2

    aget v4, p1, v2

    div-float/2addr v3, v4

    const/4 v4, 0x2

    aget p2, p2, v4

    aget p1, p1, v4

    div-float/2addr p2, p1

    const/4 p1, 0x3

    new-array p1, p1, [F

    aput v1, p1, v0

    aput v3, p1, v2

    aput p2, p1, v4

    invoke-static {p0}, Landroidx/compose/ui/graphics/colorspace/d;->k([F)[F

    move-result-object p2

    invoke-static {p1, p0}, Landroidx/compose/ui/graphics/colorspace/d;->m([F[F)[F

    move-result-object p0

    invoke-static {p2, p0}, Landroidx/compose/ui/graphics/colorspace/d;->l([F[F)[F

    move-result-object p0

    return-object p0
.end method

.method public static final f(Landroidx/compose/ui/graphics/colorspace/y;Landroidx/compose/ui/graphics/colorspace/y;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/y;->a()F

    move-result v1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/y;->a()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/y;->b()F

    move-result p0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/y;->b()F

    move-result p1

    sub-float/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    cmpg-float p0, p0, v2

    if-gez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static final g([F[F)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, p0, v3

    aget v5, p1, v3

    invoke-static {v4, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v4

    if-eqz v4, :cond_1

    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3a83126f    # 0.001f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static final h(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;I)Landroidx/compose/ui/graphics/colorspace/h;
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/c;->b()I

    move-result v0

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/c;->b()I

    move-result v1

    or-int v2, v0, v1

    if-gez v2, :cond_0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/d;->j(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;I)Landroidx/compose/ui/graphics/colorspace/h;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/compose/ui/graphics/colorspace/i;->a()Landroidx/collection/e0;

    move-result-object v2

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0xc

    or-int/2addr v0, v1

    invoke-virtual {v2, v0}, Landroidx/collection/o;->c(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/d;->j(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;I)Landroidx/compose/ui/graphics/colorspace/h;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroidx/collection/e0;->t(ILjava/lang/Object;)V

    :cond_1
    move-object p0, v1

    check-cast p0, Landroidx/compose/ui/graphics/colorspace/h;

    :goto_0
    return-object p0
.end method

.method public static synthetic i(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;IILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/h;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    sget-object p1, Landroidx/compose/ui/graphics/colorspace/g;->a:Landroidx/compose/ui/graphics/colorspace/g;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/g;->w()Landroidx/compose/ui/graphics/colorspace/Rgb;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    sget-object p2, Landroidx/compose/ui/graphics/colorspace/n;->a:Landroidx/compose/ui/graphics/colorspace/n$a;

    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/n$a;->b()I

    move-result p2

    :cond_1
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/graphics/colorspace/d;->h(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;I)Landroidx/compose/ui/graphics/colorspace/h;

    move-result-object p0

    return-object p0
.end method

.method private static final j(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;I)Landroidx/compose/ui/graphics/colorspace/h;
    .locals 7

    if-ne p0, p1, :cond_0

    sget-object p1, Landroidx/compose/ui/graphics/colorspace/h;->g:Landroidx/compose/ui/graphics/colorspace/h$a;

    invoke-virtual {p1, p0}, Landroidx/compose/ui/graphics/colorspace/h$a;->c(Landroidx/compose/ui/graphics/colorspace/c;)Landroidx/compose/ui/graphics/colorspace/h;

    move-result-object p0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/c;->e()J

    move-result-wide v0

    sget-object v2, Landroidx/compose/ui/graphics/colorspace/b;->a:Landroidx/compose/ui/graphics/colorspace/b$a;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/b$a;->b()J

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Landroidx/compose/ui/graphics/colorspace/b;->e(JJ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/c;->e()J

    move-result-wide v3

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/colorspace/b$a;->b()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/colorspace/b;->e(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/h$b;

    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.graphics.colorspace.Rgb"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/ui/graphics/colorspace/h$b;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_0
    move-object p0, v0

    goto :goto_1

    :cond_1
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/h;

    invoke-direct {v0, p0, p1, p2, v1}, Landroidx/compose/ui/graphics/colorspace/h;-><init>(Landroidx/compose/ui/graphics/colorspace/c;Landroidx/compose/ui/graphics/colorspace/c;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_0

    :goto_1
    return-object p0
.end method

.method public static final k([F)[F
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x3

    aget v4, v0, v3

    const/4 v5, 0x6

    aget v6, v0, v5

    const/4 v7, 0x1

    aget v8, v0, v7

    const/4 v9, 0x4

    aget v10, v0, v9

    const/4 v11, 0x7

    aget v12, v0, v11

    const/4 v13, 0x2

    aget v14, v0, v13

    const/4 v15, 0x5

    aget v16, v0, v15

    const/16 v17, 0x8

    aget v18, v0, v17

    mul-float v19, v10, v18

    mul-float v20, v12, v16

    sub-float v19, v19, v20

    mul-float v20, v12, v14

    mul-float v21, v8, v18

    sub-float v20, v20, v21

    mul-float v21, v8, v16

    mul-float v22, v10, v14

    sub-float v21, v21, v22

    mul-float v22, v2, v19

    mul-float v23, v4, v20

    add-float v22, v22, v23

    mul-float v23, v6, v21

    add-float v22, v22, v23

    array-length v0, v0

    new-array v0, v0, [F

    div-float v19, v19, v22

    aput v19, v0, v1

    div-float v20, v20, v22

    aput v20, v0, v7

    div-float v21, v21, v22

    aput v21, v0, v13

    mul-float v1, v6, v16

    mul-float v7, v4, v18

    sub-float/2addr v1, v7

    div-float v1, v1, v22

    aput v1, v0, v3

    mul-float v18, v18, v2

    mul-float v1, v6, v14

    sub-float v18, v18, v1

    div-float v18, v18, v22

    aput v18, v0, v9

    mul-float/2addr v14, v4

    mul-float v16, v16, v2

    sub-float v14, v14, v16

    div-float v14, v14, v22

    aput v14, v0, v15

    mul-float v1, v4, v12

    mul-float v3, v6, v10

    sub-float/2addr v1, v3

    div-float v1, v1, v22

    aput v1, v0, v5

    mul-float/2addr v6, v8

    mul-float/2addr v12, v2

    sub-float/2addr v6, v12

    div-float v6, v6, v22

    aput v6, v0, v11

    mul-float/2addr v2, v10

    mul-float/2addr v4, v8

    sub-float/2addr v2, v4

    div-float v2, v2, v22

    aput v2, v0, v17

    return-object v0
.end method

.method public static final l([F[F)[F
    .locals 27

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    mul-float v3, v1, v2

    const/4 v4, 0x3

    aget v5, p0, v4

    const/4 v6, 0x1

    aget v7, p1, v6

    mul-float v8, v5, v7

    add-float/2addr v3, v8

    const/4 v8, 0x6

    aget v9, p0, v8

    const/4 v10, 0x2

    aget v11, p1, v10

    mul-float v12, v9, v11

    add-float/2addr v3, v12

    aget v12, p0, v6

    mul-float v13, v12, v2

    const/4 v14, 0x4

    aget v15, p0, v14

    mul-float v16, v15, v7

    add-float v13, v13, v16

    const/16 v16, 0x7

    aget v17, p0, v16

    mul-float v18, v17, v11

    add-float v13, v13, v18

    aget v18, p0, v10

    mul-float v2, v2, v18

    const/16 v19, 0x5

    aget v20, p0, v19

    mul-float v7, v7, v20

    add-float/2addr v2, v7

    const/16 v7, 0x8

    aget v21, p0, v7

    mul-float v11, v11, v21

    add-float/2addr v2, v11

    aget v11, p1, v4

    mul-float v22, v1, v11

    aget v23, p1, v14

    mul-float v24, v5, v23

    add-float v22, v22, v24

    aget v24, p1, v19

    mul-float v25, v9, v24

    add-float v22, v22, v25

    mul-float v25, v12, v11

    mul-float v26, v15, v23

    add-float v25, v25, v26

    mul-float v26, v17, v24

    add-float v25, v25, v26

    mul-float v11, v11, v18

    mul-float v23, v23, v20

    add-float v11, v11, v23

    mul-float v24, v24, v21

    add-float v11, v11, v24

    aget v23, p1, v8

    mul-float v1, v1, v23

    aget v24, p1, v16

    mul-float v5, v5, v24

    add-float/2addr v1, v5

    aget v5, p1, v7

    mul-float/2addr v9, v5

    add-float/2addr v1, v9

    mul-float v12, v12, v23

    mul-float v15, v15, v24

    add-float/2addr v12, v15

    mul-float v17, v17, v5

    add-float v12, v12, v17

    mul-float v18, v18, v23

    mul-float v20, v20, v24

    add-float v18, v18, v20

    mul-float v21, v21, v5

    add-float v18, v18, v21

    const/16 v5, 0x9

    new-array v5, v5, [F

    aput v3, v5, v0

    aput v13, v5, v6

    aput v2, v5, v10

    aput v22, v5, v4

    aput v25, v5, v14

    aput v11, v5, v19

    aput v1, v5, v8

    aput v12, v5, v16

    aput v18, v5, v7

    return-object v5
.end method

.method public static final m([F[F)[F
    .locals 19

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    aget v4, p0, v3

    aget v5, p1, v3

    mul-float/2addr v5, v4

    const/4 v6, 0x2

    aget v7, p0, v6

    aget v8, p1, v6

    mul-float/2addr v8, v7

    const/4 v9, 0x3

    aget v10, p1, v9

    mul-float/2addr v10, v1

    const/4 v11, 0x4

    aget v12, p1, v11

    mul-float/2addr v12, v4

    const/4 v13, 0x5

    aget v14, p1, v13

    mul-float/2addr v14, v7

    const/4 v15, 0x6

    aget v16, p1, v15

    mul-float v1, v1, v16

    const/16 v16, 0x7

    aget v17, p1, v16

    mul-float v4, v4, v17

    const/16 v17, 0x8

    aget v18, p1, v17

    mul-float v7, v7, v18

    const/16 v15, 0x9

    new-array v15, v15, [F

    aput v2, v15, v0

    aput v5, v15, v3

    aput v8, v15, v6

    aput v10, v15, v9

    aput v12, v15, v11

    aput v14, v15, v13

    const/4 v0, 0x6

    aput v1, v15, v0

    aput v4, v15, v16

    aput v7, v15, v17

    return-object v15
.end method

.method public static final n([F[F)[F
    .locals 8

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v5, p1, v4

    aget v6, p0, v0

    mul-float/2addr v6, v1

    const/4 v7, 0x3

    aget v7, p0, v7

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    const/4 v7, 0x6

    aget v7, p0, v7

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    aput v6, p1, v0

    aget v0, p0, v2

    mul-float/2addr v0, v1

    const/4 v6, 0x4

    aget v6, p0, v6

    mul-float/2addr v6, v3

    add-float/2addr v0, v6

    const/4 v6, 0x7

    aget v6, p0, v6

    mul-float/2addr v6, v5

    add-float/2addr v0, v6

    aput v0, p1, v2

    aget v0, p0, v4

    mul-float/2addr v0, v1

    const/4 v1, 0x5

    aget v1, p0, v1

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    const/16 v1, 0x8

    aget p0, p0, v1

    mul-float/2addr p0, v5

    add-float/2addr v0, p0

    aput v0, p1, v4

    return-object p1
.end method

.method public static final o(DDDDDD)D
    .locals 0

    mul-double/2addr p8, p6

    cmpl-double p8, p0, p8

    if-ltz p8, :cond_0

    const-wide/high16 p6, 0x3ff0000000000000L    # 1.0

    div-double/2addr p6, p10

    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr p0, p4

    div-double/2addr p0, p2

    goto :goto_0

    :cond_0
    div-double/2addr p0, p6

    :goto_0
    return-wide p0
.end method

.method public static final p(DDDDDDDD)D
    .locals 4

    mul-double v0, p8, p6

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    sub-double v0, p0, p10

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, p14

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, p4

    div-double/2addr v0, p2

    goto :goto_0

    :cond_0
    sub-double v0, p0, p12

    div-double/2addr v0, p6

    :goto_0
    return-wide v0
.end method

.method public static final q(DDDDDD)D
    .locals 0

    cmpl-double p8, p0, p8

    if-ltz p8, :cond_0

    mul-double/2addr p2, p0

    add-double/2addr p2, p4

    invoke-static {p2, p3, p10, p11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    mul-double/2addr p0, p6

    :goto_0
    return-wide p0
.end method

.method public static final r(DDDDDDDD)D
    .locals 4

    cmpl-double v0, p0, p8

    if-ltz v0, :cond_0

    mul-double v0, p2, p0

    add-double/2addr v0, p4

    move-wide/from16 v2, p14

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    add-double/2addr v0, p10

    goto :goto_0

    :cond_0
    mul-double v0, p6, p0

    add-double v0, v0, p12

    :goto_0
    return-wide v0
.end method
