.class public abstract Landroidx/compose/ui/node/o0;
.super Ljava/lang/Object;


# direct methods
.method public static final synthetic a([III)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/o0;->i([III)V

    return-void
.end method

.method private static final b(Landroidx/compose/ui/node/t;Landroidx/compose/ui/node/k;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/t;->c()I

    move-result v3

    if-ge v0, v3, :cond_3

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/t;->b(I)I

    move-result v3

    add-int/lit8 v4, v0, 0x2

    invoke-virtual {p0, v4}, Landroidx/compose/ui/node/t;->b(I)I

    move-result v5

    sub-int/2addr v3, v5

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Landroidx/compose/ui/node/t;->b(I)I

    move-result v5

    invoke-virtual {p0, v4}, Landroidx/compose/ui/node/t;->b(I)I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v4}, Landroidx/compose/ui/node/t;->b(I)I

    move-result v4

    add-int/lit8 v0, v0, 0x3

    :goto_0
    if-ge v1, v3, :cond_1

    invoke-interface {p1, v2, v1}, Landroidx/compose/ui/node/k;->e(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v5, :cond_2

    invoke-interface {p1, v2}, Landroidx/compose/ui/node/k;->b(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v3, v4, -0x1

    if-lez v4, :cond_0

    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/node/k;->c(II)V

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method private static final c(IIIILandroidx/compose/ui/node/k;[I[II[I)Z
    .locals 16

    move/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    sub-int v4, p1, v0

    sub-int v5, p3, v1

    sub-int/2addr v4, v5

    rem-int/lit8 v5, v4, 0x2

    const/4 v7, 0x1

    if-nez v5, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    neg-int v8, v3

    move v9, v8

    :goto_1
    if-gt v9, v3, :cond_9

    if-eq v9, v8, :cond_2

    if-eq v9, v3, :cond_1

    add-int/lit8 v10, v9, 0x1

    invoke-static {v2, v10}, Landroidx/compose/ui/node/c;->b([II)I

    move-result v10

    add-int/lit8 v11, v9, -0x1

    invoke-static {v2, v11}, Landroidx/compose/ui/node/c;->b([II)I

    move-result v11

    if-ge v10, v11, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v9, -0x1

    invoke-static {v2, v10}, Landroidx/compose/ui/node/c;->b([II)I

    move-result v10

    add-int/lit8 v11, v10, -0x1

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v10, v9, 0x1

    invoke-static {v2, v10}, Landroidx/compose/ui/node/c;->b([II)I

    move-result v10

    move v11, v10

    :goto_3
    sub-int v12, p1, v11

    sub-int/2addr v12, v9

    sub-int v12, p3, v12

    if-eqz v3, :cond_4

    if-eq v11, v10, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v12, 0x1

    goto :goto_5

    :cond_4
    :goto_4
    move v13, v12

    :goto_5
    if-le v11, v0, :cond_5

    if-le v12, v1, :cond_5

    add-int/lit8 v14, v11, -0x1

    add-int/lit8 v15, v12, -0x1

    move-object/from16 v6, p4

    invoke-interface {v6, v14, v15}, Landroidx/compose/ui/node/k;->a(II)Z

    move-result v14

    if-eqz v14, :cond_6

    add-int/lit8 v11, v11, -0x1

    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    :cond_5
    move-object/from16 v6, p4

    :cond_6
    invoke-static {v2, v9, v11}, Landroidx/compose/ui/node/c;->d([III)V

    if-eqz v5, :cond_7

    sub-int v14, v4, v9

    if-lt v14, v8, :cond_7

    if-gt v14, v3, :cond_7

    move-object/from16 v15, p5

    invoke-static {v15, v14}, Landroidx/compose/ui/node/c;->b([II)I

    move-result v14

    if-lt v14, v11, :cond_8

    const/4 v0, 0x1

    move/from16 p0, v11

    move/from16 p1, v12

    move/from16 p2, v10

    move/from16 p3, v13

    move/from16 p4, v0

    move-object/from16 p5, p8

    invoke-static/range {p0 .. p5}, Landroidx/compose/ui/node/o0;->f(IIIIZ[I)V

    return v7

    :cond_7
    move-object/from16 v15, p5

    :cond_8
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_9
    const/4 v9, 0x0

    return v9
.end method

.method private static final d(IILandroidx/compose/ui/node/k;)Landroidx/compose/ui/node/t;
    .locals 18

    move/from16 v0, p0

    move/from16 v1, p1

    add-int v2, v0, v1

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    new-instance v3, Landroidx/compose/ui/node/t;

    mul-int/lit8 v4, v2, 0x3

    invoke-direct {v3, v4}, Landroidx/compose/ui/node/t;-><init>(I)V

    new-instance v4, Landroidx/compose/ui/node/t;

    mul-int/lit8 v5, v2, 0x4

    invoke-direct {v4, v5}, Landroidx/compose/ui/node/t;-><init>(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0, v5, v1}, Landroidx/compose/ui/node/t;->h(IIII)V

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    new-array v6, v2, [I

    invoke-static {v6}, Landroidx/compose/ui/node/c;->a([I)[I

    move-result-object v6

    new-array v2, v2, [I

    invoke-static {v2}, Landroidx/compose/ui/node/c;->a([I)[I

    move-result-object v2

    const/4 v7, 0x5

    new-array v7, v7, [I

    invoke-static {v7}, Landroidx/compose/ui/node/k1;->b([I)[I

    move-result-object v15

    :goto_0
    invoke-virtual {v4}, Landroidx/compose/ui/node/t;->d()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v4}, Landroidx/compose/ui/node/t;->f()I

    move-result v14

    invoke-virtual {v4}, Landroidx/compose/ui/node/t;->f()I

    move-result v13

    invoke-virtual {v4}, Landroidx/compose/ui/node/t;->f()I

    move-result v12

    invoke-virtual {v4}, Landroidx/compose/ui/node/t;->f()I

    move-result v11

    move v7, v11

    move v8, v12

    move v9, v13

    move v10, v14

    move v5, v11

    move-object/from16 v11, p2

    move v0, v12

    move-object v12, v6

    move-object/from16 v16, v6

    move v6, v13

    move-object v13, v2

    move-object/from16 v17, v2

    move v2, v14

    move-object v14, v15

    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/node/o0;->h(IIIILandroidx/compose/ui/node/k;[I[I[I)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v15}, Landroidx/compose/ui/node/k1;->c([I)I

    move-result v7

    if-lez v7, :cond_0

    invoke-static {v15, v3}, Landroidx/compose/ui/node/k1;->a([ILandroidx/compose/ui/node/t;)V

    :cond_0
    invoke-static {v15}, Landroidx/compose/ui/node/k1;->h([I)I

    move-result v7

    invoke-static {v15}, Landroidx/compose/ui/node/k1;->i([I)I

    move-result v8

    invoke-virtual {v4, v5, v7, v6, v8}, Landroidx/compose/ui/node/t;->h(IIII)V

    invoke-static {v15}, Landroidx/compose/ui/node/k1;->d([I)I

    move-result v5

    invoke-static {v15}, Landroidx/compose/ui/node/k1;->e([I)I

    move-result v6

    invoke-virtual {v4, v5, v0, v6, v2}, Landroidx/compose/ui/node/t;->h(IIII)V

    :cond_1
    const/4 v5, 0x0

    move/from16 v0, p0

    move-object/from16 v6, v16

    move-object/from16 v2, v17

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroidx/compose/ui/node/t;->j()V

    const/4 v2, 0x0

    move/from16 v0, p0

    invoke-virtual {v3, v0, v1, v2}, Landroidx/compose/ui/node/t;->g(III)V

    return-object v3
.end method

.method public static final e(IILandroidx/compose/ui/node/k;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/compose/ui/node/o0;->d(IILandroidx/compose/ui/node/k;)Landroidx/compose/ui/node/t;

    move-result-object p0

    invoke-static {p0, p2}, Landroidx/compose/ui/node/o0;->b(Landroidx/compose/ui/node/t;Landroidx/compose/ui/node/k;)V

    return-void
.end method

.method public static final f(IIIIZ[I)V
    .locals 1

    const/4 v0, 0x0

    aput p0, p5, v0

    const/4 p0, 0x1

    aput p1, p5, p0

    const/4 p0, 0x2

    aput p2, p5, p0

    const/4 p0, 0x3

    aput p3, p5, p0

    const/4 p0, 0x4

    aput p4, p5, p0

    return-void
.end method

.method private static final g(IIIILandroidx/compose/ui/node/k;[I[II[I)Z
    .locals 16

    move/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p5

    move/from16 v3, p7

    sub-int v4, v0, p0

    sub-int v5, v1, p2

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    neg-int v8, v3

    move v9, v8

    :goto_1
    if-gt v9, v3, :cond_9

    if-eq v9, v8, :cond_2

    if-eq v9, v3, :cond_1

    add-int/lit8 v10, v9, 0x1

    invoke-static {v2, v10}, Landroidx/compose/ui/node/c;->b([II)I

    move-result v10

    add-int/lit8 v11, v9, -0x1

    invoke-static {v2, v11}, Landroidx/compose/ui/node/c;->b([II)I

    move-result v11

    if-le v10, v11, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v10, v9, -0x1

    invoke-static {v2, v10}, Landroidx/compose/ui/node/c;->b([II)I

    move-result v10

    add-int/lit8 v11, v10, 0x1

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v10, v9, 0x1

    invoke-static {v2, v10}, Landroidx/compose/ui/node/c;->b([II)I

    move-result v10

    move v11, v10

    :goto_3
    sub-int v12, v11, p0

    add-int v12, p2, v12

    sub-int/2addr v12, v9

    if-eqz v3, :cond_4

    if-eq v11, v10, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 v13, v12, -0x1

    goto :goto_5

    :cond_4
    :goto_4
    move v13, v12

    :goto_5
    if-ge v11, v0, :cond_5

    if-ge v12, v1, :cond_5

    move-object/from16 v14, p4

    invoke-interface {v14, v11, v12}, Landroidx/compose/ui/node/k;->a(II)Z

    move-result v15

    if-eqz v15, :cond_6

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_5
    move-object/from16 v14, p4

    :cond_6
    invoke-static {v2, v9, v11}, Landroidx/compose/ui/node/c;->d([III)V

    if-eqz v5, :cond_7

    sub-int v15, v4, v9

    add-int/lit8 v6, v8, 0x1

    if-lt v15, v6, :cond_7

    add-int/lit8 v6, v3, -0x1

    if-gt v15, v6, :cond_7

    move-object/from16 v6, p6

    invoke-static {v6, v15}, Landroidx/compose/ui/node/c;->b([II)I

    move-result v15

    if-gt v15, v11, :cond_8

    const/4 v0, 0x0

    move/from16 p0, v10

    move/from16 p1, v13

    move/from16 p2, v11

    move/from16 p3, v12

    move/from16 p4, v0

    move-object/from16 p5, p8

    invoke-static/range {p0 .. p5}, Landroidx/compose/ui/node/o0;->f(IIIIZ[I)V

    return v7

    :cond_7
    move-object/from16 v6, p6

    :cond_8
    add-int/lit8 v9, v9, 0x2

    goto :goto_1

    :cond_9
    const/4 v9, 0x0

    return v9
.end method

.method private static final h(IIIILandroidx/compose/ui/node/k;[I[I[I)Z
    .locals 17

    move/from16 v9, p0

    move/from16 v10, p1

    sub-int v0, v10, v9

    sub-int v1, p3, p2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-lt v0, v12, :cond_3

    if-ge v1, v12, :cond_0

    goto :goto_1

    :cond_0
    add-int/2addr v0, v1

    add-int/2addr v0, v12

    div-int/lit8 v13, v0, 0x2

    move-object/from16 v14, p5

    invoke-static {v14, v12, v9}, Landroidx/compose/ui/node/c;->d([III)V

    move-object/from16 v15, p6

    invoke-static {v15, v12, v10}, Landroidx/compose/ui/node/c;->d([III)V

    move v8, v11

    :goto_0
    if-ge v8, v13, :cond_3

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move v7, v8

    move/from16 v16, v8

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/node/o0;->g(IIIILandroidx/compose/ui/node/k;[I[II[I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v12

    :cond_1
    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, v16

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Landroidx/compose/ui/node/o0;->c(IIIILandroidx/compose/ui/node/k;[I[II[I)Z

    move-result v0

    if-eqz v0, :cond_2

    return v12

    :cond_2
    add-int/lit8 v8, v16, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v11
.end method

.method private static final i([III)V
    .locals 2

    aget v0, p0, p1

    aget v1, p0, p2

    aput v1, p0, p1

    aput v0, p0, p2

    return-void
.end method
