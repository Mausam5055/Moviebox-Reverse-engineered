.class public abstract Landroidx/compose/foundation/text/BasicTextKt;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Ljava/lang/String;Landroidx/compose/ui/f;Landroidx/compose/ui/text/d0;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/x1;Landroidx/compose/runtime/i;II)V
    .locals 42

    move/from16 v10, p10

    move/from16 v11, p11

    const v0, -0x46bd8e2e

    move-object/from16 v1, p9

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->g(I)Landroidx/compose/runtime/i;

    move-result-object v1

    and-int/lit8 v2, v11, 0x1

    if-eqz v2, :cond_0

    or-int/lit8 v2, v10, 0x6

    move v3, v2

    move-object/from16 v2, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v2, v10, 0x6

    if-nez v2, :cond_2

    move-object/from16 v2, p0

    invoke-interface {v1, v2}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    :goto_0
    or-int/2addr v3, v10

    goto :goto_1

    :cond_2
    move-object/from16 v2, p0

    move v3, v10

    :goto_1
    and-int/lit8 v4, v11, 0x2

    if-eqz v4, :cond_4

    or-int/lit8 v3, v3, 0x30

    :cond_3
    move-object/from16 v5, p1

    goto :goto_3

    :cond_4
    and-int/lit8 v5, v10, 0x30

    if-nez v5, :cond_3

    move-object/from16 v5, p1

    invoke-interface {v1, v5}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 v6, 0x20

    goto :goto_2

    :cond_5
    const/16 v6, 0x10

    :goto_2
    or-int/2addr v3, v6

    :goto_3
    and-int/lit8 v6, v11, 0x4

    if-eqz v6, :cond_7

    or-int/lit16 v3, v3, 0x180

    :cond_6
    move-object/from16 v7, p2

    goto :goto_5

    :cond_7
    and-int/lit16 v7, v10, 0x180

    if-nez v7, :cond_6

    move-object/from16 v7, p2

    invoke-interface {v1, v7}, Landroidx/compose/runtime/i;->O(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x100

    goto :goto_4

    :cond_8
    const/16 v8, 0x80

    :goto_4
    or-int/2addr v3, v8

    :goto_5
    and-int/lit8 v8, v11, 0x8

    if-eqz v8, :cond_a

    or-int/lit16 v3, v3, 0xc00

    :cond_9
    move-object/from16 v9, p3

    goto :goto_7

    :cond_a
    and-int/lit16 v9, v10, 0xc00

    if-nez v9, :cond_9

    move-object/from16 v9, p3

    invoke-interface {v1, v9}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    const/16 v12, 0x800

    goto :goto_6

    :cond_b
    const/16 v12, 0x400

    :goto_6
    or-int/2addr v3, v12

    :goto_7
    and-int/lit8 v12, v11, 0x10

    if-eqz v12, :cond_d

    or-int/lit16 v3, v3, 0x6000

    :cond_c
    move/from16 v13, p4

    goto :goto_9

    :cond_d
    and-int/lit16 v13, v10, 0x6000

    if-nez v13, :cond_c

    move/from16 v13, p4

    invoke-interface {v1, v13}, Landroidx/compose/runtime/i;->c(I)Z

    move-result v14

    if-eqz v14, :cond_e

    const/16 v14, 0x4000

    goto :goto_8

    :cond_e
    const/16 v14, 0x2000

    :goto_8
    or-int/2addr v3, v14

    :goto_9
    and-int/lit8 v14, v11, 0x20

    const/high16 v15, 0x30000

    if-eqz v14, :cond_10

    or-int/2addr v3, v15

    :cond_f
    move/from16 v15, p5

    goto :goto_b

    :cond_10
    and-int/2addr v15, v10

    if-nez v15, :cond_f

    move/from16 v15, p5

    invoke-interface {v1, v15}, Landroidx/compose/runtime/i;->a(Z)Z

    move-result v16

    if-eqz v16, :cond_11

    const/high16 v16, 0x20000

    goto :goto_a

    :cond_11
    const/high16 v16, 0x10000

    :goto_a
    or-int v3, v3, v16

    :goto_b
    and-int/lit8 v16, v11, 0x40

    const/high16 v17, 0x180000

    if-eqz v16, :cond_12

    or-int v3, v3, v17

    move/from16 v0, p6

    goto :goto_d

    :cond_12
    and-int v17, v10, v17

    move/from16 v0, p6

    if-nez v17, :cond_14

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->c(I)Z

    move-result v18

    if-eqz v18, :cond_13

    const/high16 v18, 0x100000

    goto :goto_c

    :cond_13
    const/high16 v18, 0x80000

    :goto_c
    or-int v3, v3, v18

    :cond_14
    :goto_d
    and-int/lit16 v0, v11, 0x80

    const/high16 v18, 0xc00000

    if-eqz v0, :cond_15

    or-int v3, v3, v18

    move/from16 v2, p7

    goto :goto_f

    :cond_15
    and-int v18, v10, v18

    move/from16 v2, p7

    if-nez v18, :cond_17

    invoke-interface {v1, v2}, Landroidx/compose/runtime/i;->c(I)Z

    move-result v18

    if-eqz v18, :cond_16

    const/high16 v18, 0x800000

    goto :goto_e

    :cond_16
    const/high16 v18, 0x400000

    :goto_e
    or-int v3, v3, v18

    :cond_17
    :goto_f
    and-int/lit16 v2, v11, 0x100

    const/high16 v18, 0x6000000

    if-eqz v2, :cond_18

    or-int v3, v3, v18

    move-object/from16 v5, p8

    goto :goto_11

    :cond_18
    and-int v18, v10, v18

    move-object/from16 v5, p8

    if-nez v18, :cond_1a

    invoke-interface {v1, v5}, Landroidx/compose/runtime/i;->A(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_19

    const/high16 v18, 0x4000000

    goto :goto_10

    :cond_19
    const/high16 v18, 0x2000000

    :goto_10
    or-int v3, v3, v18

    :cond_1a
    :goto_11
    const v18, 0x2492493

    and-int v5, v3, v18

    const v7, 0x2492492

    if-ne v5, v7, :cond_1c

    invoke-interface {v1}, Landroidx/compose/runtime/i;->h()Z

    move-result v5

    if-nez v5, :cond_1b

    goto :goto_12

    :cond_1b
    invoke-interface {v1}, Landroidx/compose/runtime/i;->G()V

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v7, p6

    move/from16 v8, p7

    move-object v4, v9

    move v5, v13

    move v6, v15

    move-object/from16 v9, p8

    goto/16 :goto_1c

    :cond_1c
    :goto_12
    if-eqz v4, :cond_1d

    sget-object v4, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    goto :goto_13

    :cond_1d
    move-object/from16 v4, p1

    :goto_13
    if-eqz v6, :cond_1e

    sget-object v5, Landroidx/compose/ui/text/d0;->d:Landroidx/compose/ui/text/d0$a;

    invoke-virtual {v5}, Landroidx/compose/ui/text/d0$a;->a()Landroidx/compose/ui/text/d0;

    move-result-object v5

    goto :goto_14

    :cond_1e
    move-object/from16 v5, p2

    :goto_14
    const/4 v6, 0x0

    if-eqz v8, :cond_1f

    move-object v9, v6

    :cond_1f
    if-eqz v12, :cond_20

    sget-object v7, Landroidx/compose/ui/text/style/p;->a:Landroidx/compose/ui/text/style/p$a;

    invoke-virtual {v7}, Landroidx/compose/ui/text/style/p$a;->a()I

    move-result v7

    goto :goto_15

    :cond_20
    move v7, v13

    :goto_15
    const/4 v8, 0x1

    if-eqz v14, :cond_21

    move/from16 v41, v8

    goto :goto_16

    :cond_21
    move/from16 v41, v15

    :goto_16
    if-eqz v16, :cond_22

    const v12, 0x7fffffff

    move v15, v12

    goto :goto_17

    :cond_22
    move/from16 v15, p6

    :goto_17
    if-eqz v0, :cond_23

    goto :goto_18

    :cond_23
    move/from16 v8, p7

    :goto_18
    if-eqz v2, :cond_24

    goto :goto_19

    :cond_24
    move-object/from16 v6, p8

    :goto_19
    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, -0x1

    const-string v2, "androidx.compose.foundation.text.BasicText (BasicText.kt:96)"

    const v12, -0x46bd8e2e

    invoke-static {v12, v3, v0, v2}, Landroidx/compose/runtime/k;->Q(IIILjava/lang/String;)V

    :cond_25
    invoke-static {v8, v15}, Landroidx/compose/foundation/text/a;->a(II)V

    invoke-static {}, Landroidx/compose/foundation/text/selection/SelectionRegistrarKt;->a()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/media/session/c;->a(Ljava/lang/Object;)V

    const v0, -0x5eb16ea6

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->P(I)V

    invoke-interface {v1}, Landroidx/compose/runtime/i;->K()V

    if-eqz v9, :cond_26

    const v0, -0x5eaf9054

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->P(I)V

    const v39, 0x1ffff

    const/16 v40, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v18, v4

    invoke-static/range {v18 .. v40}, Landroidx/compose/ui/graphics/b4;->b(Landroidx/compose/ui/f;FFFFFFFFFFJLandroidx/compose/ui/graphics/a5;ZLandroidx/compose/ui/graphics/w4;JJIILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v18

    new-instance v19, Landroidx/compose/ui/text/AnnotatedString;

    const/4 v0, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v12, 0x0

    move-object/from16 p1, v19

    move-object/from16 p2, p0

    move-object/from16 p3, v3

    move-object/from16 p4, v12

    move/from16 p5, v0

    move-object/from16 p6, v2

    invoke-direct/range {p1 .. p6}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->d()Landroidx/compose/runtime/s1;

    move-result-object v0

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v26, v0

    check-cast v26, Landroidx/compose/ui/text/font/h$b;

    const/16 v28, 0x0

    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v20, v5

    move-object/from16 v21, v9

    move/from16 v22, v7

    move/from16 v23, v41

    move/from16 v24, v15

    move/from16 v25, v8

    move-object/from16 v30, v6

    invoke-static/range {v18 .. v31}, Landroidx/compose/foundation/text/BasicTextKt;->b(Landroidx/compose/ui/f;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/h$b;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Landroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/i;->K()V

    move/from16 v22, v15

    goto :goto_1a

    :cond_26
    const v0, -0x5ea4eadf

    invoke-interface {v1, v0}, Landroidx/compose/runtime/i;->P(I)V

    const v39, 0x1ffff

    const/16 v40, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const-wide/16 v34, 0x0

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v18, v4

    invoke-static/range {v18 .. v40}, Landroidx/compose/ui/graphics/b4;->b(Landroidx/compose/ui/f;FFFFFFFFFFJLandroidx/compose/ui/graphics/a5;ZLandroidx/compose/ui/graphics/w4;JJIILjava/lang/Object;)Landroidx/compose/ui/f;

    move-result-object v0

    new-instance v2, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;

    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->d()Landroidx/compose/runtime/s1;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/compose/runtime/i;->l(Landroidx/compose/runtime/q;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/text/font/h$b;

    const/16 v21, 0x0

    move-object v12, v2

    move-object/from16 v13, p0

    move-object v14, v5

    move/from16 v22, v15

    move-object v15, v3

    move/from16 v16, v7

    move/from16 v17, v41

    move/from16 v18, v22

    move/from16 v19, v8

    move-object/from16 v20, v6

    invoke-direct/range {v12 .. v21}, Landroidx/compose/foundation/text/modifiers/TextStringSimpleElement;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;IZIILandroidx/compose/ui/graphics/x1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-interface {v0, v2}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/i;->K()V

    :goto_1a
    sget-object v2, Landroidx/compose/foundation/text/EmptyMeasurePolicy;->a:Landroidx/compose/foundation/text/EmptyMeasurePolicy;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Landroidx/compose/runtime/g;->a(Landroidx/compose/runtime/i;I)I

    move-result v3

    invoke-static {v1, v0}, Landroidx/compose/ui/ComposedModifierKt;->e(Landroidx/compose/runtime/i;Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-interface {v1}, Landroidx/compose/runtime/i;->n()Landroidx/compose/runtime/s;

    move-result-object v12

    sget-object v13, Landroidx/compose/ui/node/ComposeUiNode;->c1:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->a()Lkotlin/jvm/functions/Function0;

    move-result-object v14

    invoke-interface {v1}, Landroidx/compose/runtime/i;->i()Landroidx/compose/runtime/f;

    move-result-object v15

    instance-of v15, v15, Landroidx/compose/runtime/f;

    if-nez v15, :cond_27

    invoke-static {}, Landroidx/compose/runtime/g;->b()V

    :cond_27
    invoke-interface {v1}, Landroidx/compose/runtime/i;->C()V

    invoke-interface {v1}, Landroidx/compose/runtime/i;->e()Z

    move-result v15

    if-eqz v15, :cond_28

    invoke-interface {v1, v14}, Landroidx/compose/runtime/i;->F(Lkotlin/jvm/functions/Function0;)V

    goto :goto_1b

    :cond_28
    invoke-interface {v1}, Landroidx/compose/runtime/i;->o()V

    :goto_1b
    invoke-static {v1}, Landroidx/compose/runtime/f3;->a(Landroidx/compose/runtime/i;)Landroidx/compose/runtime/i;

    move-result-object v14

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->c()Lkotlin/jvm/functions/Function2;

    move-result-object v15

    invoke-static {v14, v2, v15}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->e()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v14, v12, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->d()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v14, v0, v2}, Landroidx/compose/runtime/f3;->b(Landroidx/compose/runtime/i;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    invoke-virtual {v13}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->b()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-interface {v14}, Landroidx/compose/runtime/i;->e()Z

    move-result v2

    if-nez v2, :cond_29

    invoke-interface {v14}, Landroidx/compose/runtime/i;->y()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    :cond_29
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2}, Landroidx/compose/runtime/i;->p(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2, v0}, Landroidx/compose/runtime/i;->k(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    :cond_2a
    invoke-interface {v1}, Landroidx/compose/runtime/i;->r()V

    invoke-static {}, Landroidx/compose/runtime/k;->H()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-static {}, Landroidx/compose/runtime/k;->P()V

    :cond_2b
    move-object v2, v4

    move-object v3, v5

    move v5, v7

    move-object v4, v9

    move/from16 v7, v22

    move-object v9, v6

    move/from16 v6, v41

    :goto_1c
    invoke-interface {v1}, Landroidx/compose/runtime/i;->j()Landroidx/compose/runtime/g2;

    move-result-object v12

    if-eqz v12, :cond_2c

    new-instance v13, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Landroidx/compose/foundation/text/BasicTextKt$BasicText$1;-><init>(Ljava/lang/String;Landroidx/compose/ui/f;Landroidx/compose/ui/text/d0;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/graphics/x1;II)V

    invoke-interface {v12, v13}, Landroidx/compose/runtime/g2;->a(Lkotlin/jvm/functions/Function2;)V

    :cond_2c
    return-void
.end method

.method private static final b(Landroidx/compose/ui/f;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Lkotlin/jvm/functions/Function1;IZIILandroidx/compose/ui/text/font/h$b;Ljava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Landroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/f;
    .locals 16

    new-instance v15, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;

    const/4 v11, 0x0

    const/4 v14, 0x0

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p8

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Landroidx/compose/foundation/text/modifiers/TextAnnotatedStringElement;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/d0;Landroidx/compose/ui/text/font/h$b;Lkotlin/jvm/functions/Function1;IZIILjava/util/List;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/text/modifiers/h;Landroidx/compose/ui/graphics/x1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/compose/ui/f;->a:Landroidx/compose/ui/f$a;

    move-object/from16 v1, p0

    invoke-interface {v1, v0}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    invoke-interface {v0, v15}, Landroidx/compose/ui/f;->e(Landroidx/compose/ui/f;)Landroidx/compose/ui/f;

    move-result-object v0

    return-object v0
.end method
